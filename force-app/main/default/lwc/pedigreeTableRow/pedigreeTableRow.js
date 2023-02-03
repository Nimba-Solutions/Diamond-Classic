import { LightningElement } from 'lwc';

export default class HorseInformationForm extends LightningElement {
  name;
  gender;
  dateFoaled;
  sireId;
  damId;
  color;
  registrationNumber;

  handleNameChange(event) {
    this.name = event.target.value;
  }

  handleGenderChange(event) {
    this.gender = event.target.value;
  }

  handleDateFoaledChange(event) {
    this.dateFoaled = event.target.value;
  }

  handleSireChange(event) {
    this.sireId = event.target.value;
  }

  handleDamChange(event) {
    this.damId = event.target.value;
  }

  handleColorChange(event) {
    this.color = event.target.value;
  }

  handleRegistrationNumberChange(event) {
    this.registrationNumber = event.target.value;
  }
}