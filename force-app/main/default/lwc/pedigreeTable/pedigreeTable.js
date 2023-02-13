import { LightningElement, track, api, wire } from 'lwc';
import { FlowNavigationNextEvent } from 'lightning/flowSupport';
import createHorsesAndFiles from '@salesforce/apex/Horse.createHorseRecord';


export default class PedigreeTable extends LightningElement {
    @api availableActions = [];
    @api horses;

    connectedCallback() {
        console.log("HORSES: " + JSON.stringify(this.horses));
        this.idIndex = this.horses.length;
    }


    handleAddHorse() {
        const newHorse = {
            id: this.idIndex,
            name: null,
            gender: null,
            dateFoaled: null,
            sire: null,
            dam: null,
            color: null,
            registrationNumber: null,
            AQHA: false,
            APHA: false,
            APHC: false,
            TB: false,
            other: false,
            otherBreed: null,
            competing: false,
            files: null
        };
        this.horses = [...this.horses, newHorse];
        this.idIndex++;
        console.log("IN LWC: New Horse Added: " + JSON.stringify(this.horses));
    }


    handleRemoveHorse(event) {
        this.horses = this.horses.filter(horse => horse.id !== event.detail.horseId);
    }

    async handleSubmit() {
        // Get all instances of PedigreeTableRow
        const rows = this.template.querySelectorAll('c-pedigree-table-row');

        //Collect data for each horse and its associated files
        const data = [];
        rows.forEach(row => {
            let horse = row.horse;
            const files = row.uploadedHorse === horse ? row.uploadedFiles.concat(this.uploadedFiles) : row.uploadedFiles;
            // Stringify the horse object
            horse = JSON.stringify(horse);
            // Add the uploaded files to the horse object
            let fileIds = files.map(file => `"${file}"`).join(',');
            horse = horse.replace('"files":null', `"files":[${fileIds}]`);
            // Parse the horse object back into a JavaScript object
            horse = JSON.parse(horse);
            data.push(horse);
        });
        this.horses = data;
        
        try {
            console.log("CREATING HORSES:"+ JSON.stringify(this.horses));
            await createHorsesAndFiles({ horses: this.horses });
            console.log('Horses created successfully');
        } catch (error) {
            console.error('Error creating horses', error);
        }


        //handle NEXT
        if (this.availableActions.find((action) => action === 'NEXT')) {
            const navigateNextEvent = new FlowNavigationNextEvent();
            this.dispatchEvent(navigateNextEvent);
        }
    }

}