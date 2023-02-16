import { LightningElement, track, api, wire } from 'lwc';
import { FlowNavigationNextEvent } from 'lightning/flowSupport';
import createHorse from '@salesforce/apex/PedigreeTableController.createHorse';
import updateHorses from '@salesforce/apex/PedigreeTableController.updateHorses';

import HORSE_OBJECT from '@salesforce/schema/Horse__c';
import ID_FIELD from '@salesforce/schema/Horse__c.Id';
import NAME_FIELD from '@salesforce/schema/Horse__c.Name__c';
import REGISTRATION_NUMBER_FIELD from '@salesforce/schema/Horse__c.Registration_Number__c';
import GENDER_FIELD from '@salesforce/schema/Horse__c.Gender__c';
import DATE_FOALED_FIELD from '@salesforce/schema/Horse__c.Date_Foaled__c';
import SIRE_FIELD from '@salesforce/schema/Horse__c.Sire__c';
import DAM_FIELD from '@salesforce/schema/Horse__c.Dam__c';
import COLOR_FIELD from '@salesforce/schema/Horse__c.Color__c';
import APHA_FIELD from '@salesforce/schema/Horse__c.APHA__c';
import APHC_FIELD from '@salesforce/schema/Horse__c.APHC__c';
import AQHA_FIELD from '@salesforce/schema/Horse__c.AQHA__c';
import TB_FIELD from '@salesforce/schema/Horse__c.TB__c';
import OTHER_FIELD from '@salesforce/schema/Horse__c.Other__c';
import OTHER_BREED_ASSOCIATION_FIELD from '@salesforce/schema/Horse__c.Other_Breed_Association__c';
import IS_COMPETING_FIELD from '@salesforce/schema/Horse__c.IsCompeting__c';



export default class PedigreeTable extends LightningElement {
    @api availableActions = [];
    @api horses;

    async connectedCallback() {
        try {
            const data = await createHorse({ sObjectType: HORSE_OBJECT.objectApiName });
            this.horses = [data];
            this.idIndex = 1;
            console.log("INIT HORSES: " + JSON.stringify(this.horses));
        } catch (error) {
            console.error(error);
        }
    }



    handleAddHorse() {
        // Create a new Horse__c record and set the field values
        const newHorse = {
            sObjectType: HORSE_OBJECT.objectApiName,
            [NAME_FIELD.fieldApiName]: null,
            [REGISTRATION_NUMBER_FIELD.fieldApiName]: null,
            [GENDER_FIELD.fieldApiName]: null,
            [DATE_FOALED_FIELD.fieldApiName]: null,
            [SIRE_FIELD.fieldApiName]: null,
            [DAM_FIELD.fieldApiName]: null,
            [COLOR_FIELD.fieldApiName]: null,
            [APHA_FIELD.fieldApiName]: false,
            [APHC_FIELD.fieldApiName]: false,
            [AQHA_FIELD.fieldApiName]: false,
            [TB_FIELD.fieldApiName]: false,
            [OTHER_FIELD.fieldApiName]: false,
            [OTHER_BREED_ASSOCIATION_FIELD.fieldApiName]: null,
            [IS_COMPETING_FIELD.fieldApiName]: false
        };

        // Add the new horse to the horses array and increment the ID index
        this.horses = [...this.horses, newHorse];
        this.idIndex++;

        console.log("IN LWC: New Horse Added: " + JSON.stringify(this.horses));
    }



    handleRemoveHorse(event) {
        this.horses = this.horses.filter(horse => horse.id !== event.detail.horseId);
    }

    handleSubmit() {
        const rows = this.template.querySelectorAll('c-pedigree-table-row');
        const horses = [];
        rows.forEach(row => {
            let horse = row.horse;
            horses.push(horse);
        });
        console.log("STRINGIFIED HORSES:" + JSON.stringify(horses));

        // SEND JSON STRINGIFIED HORSES TO updateHorses()
        updateHorses({horses:JSON.stringify(horses)})
        .then(result => {
            console.log('Data:'+ JSON.stringify(result));
        }) .catch(error => {
            console.log(error);
            this.error = error;
        }); 

        if (this.availableActions.find((action) => action === 'NEXT')) {
            const navigateNextEvent = new FlowNavigationNextEvent();
            this.dispatchEvent(navigateNextEvent);
        }
    }

}