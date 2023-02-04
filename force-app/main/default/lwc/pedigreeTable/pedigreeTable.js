import { LightningElement, track, api, wire } from 'lwc';

export default class PedigreeTable extends LightningElement {
    @api horses = [
        { 
            id: 1, 
            Name: '',
            Gender: '',
            DateFoaled: '',
            Sire: '',
            Dam: '',
            Color: '',
            RegistrationNumber: '',
            AQHA: false,
            APHA: false,
            Competing: ''
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


}