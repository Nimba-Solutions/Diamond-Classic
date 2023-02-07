import { LightningElement, track, api, wire } from 'lwc';
import { FlowNavigationNextEvent } from 'lightning/flowSupport';

export default class PedigreeTable extends LightningElement {
    @api availableActions = [];
    @api horses = [
        { 
            id: 1, 
            Name: 'test1',
            Gender: 'Male',
            DateFoaled: '',
            Sire: '',
            Dam: '',
            Color: '',
            RegistrationNumber: '1111',
            AQHA: false,
            APHA: false,
            Competing: '',
            FileIds: []
        },
        { 
            id: 2, 
            Name: 'test2',
            Gender: 'Female',
            DateFoaled: '',
            Sire: '',
            Dam: '',
            Color: '',
            RegistrationNumber: '22222',
            AQHA: false,
            APHA: false,
            Competing: '',
            FileIds: []
        }
    ];

    connectedCallback() {
        this.idIndex = this.horses.length + 1;
    }


    handleAddHorse() {
        const newHorse = {
            id: this.idIndex,
            Name: '',
            Gender: '',
            DateFoaled: '',
            Sire: '',
            Dam: '',
            Color: '',
            RegistrationNumber: ''
        };
        this.horses = [...this.horses, newHorse];
        this.idIndex++;
    }

    handleRemoveHorse(event) {
        this.horses = this.horses.filter(horse => horse.id !== event.detail.horseId);
    }

    handleSubmit() {
        // Get all instances of PedigreeTableRow
        const rows = this.template.querySelectorAll('c-pedigree-table-row');
        console.log("ROWS: "+ JSON.stringify(rows));

        // Collect data for each horse and its associated files
        const data = [];
        rows.forEach(row => {
            const horse = row.horse;
            const files = row.uploadedHorse === horse ? row.uploadedFiles.concat(this.uploadedFiles) : row.uploadedFiles;
            console.log("About to push horse & file(s): "+ horse + " : "+ files);
            data.push({ horse, files });
        });

        console.log("DATA (ALL): "+ JSON.stringify(data));
        
        //handle NEXT
        if (this.availableActions.find((action) => action === 'NEXT')) {
            // navigate to the next screen
            console.log("GO NEXT");
            const navigateNextEvent = new FlowNavigationNextEvent();
            this.dispatchEvent(navigateNextEvent);
        }
    }


}