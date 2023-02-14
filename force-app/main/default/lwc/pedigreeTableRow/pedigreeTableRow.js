import { LightningElement, api, track, wire } from 'lwc';
import apexSearch from '@salesforce/apex/SampleLookupController.search';


export default class PedigreeTableRow extends LightningElement {
  @api horse;
  @api uploadedFiles = [];
  @track sireId;
  @track damId;

  @track acceptedFormats = ['.png', '.jpg', '.jpeg'];


  genderOptions = [
    { label: 'Stallion', value: 'Stallion' },
    { label: 'Gelding', value: 'Gelding' },
    { label: 'Mare', value: 'Mare' }
  ];
  boolOptions = [
    { label: 'Competing', value: 'Competing' },
    { label: 'Not Competing', value: 'Not Competing' }
  ];
  connectedCallback() {
    this.template.addEventListener('recordidselected', this.handleRecordIdSelected.bind(this));
  }

  handleRecordIdSelected(event) {
    const recordId = event.detail.recordId;
    const name = event.detail.name;

    if (name === "sire") {
        this.sireId = recordId;
        let horseAsString = JSON.stringify(this.horse);
        horseAsString = horseAsString.replace(/"sire":""/, `"sire":"${this.sireId}"`);
        this.horse = JSON.parse(horseAsString);

    } else if (name === "dam") {
        this.damId = recordId;
        let horseAsString = JSON.stringify(this.horse);
        horseAsString = horseAsString.replace(/"dam":""/, `"dam":"${this.damId}"`);
        this.horse = JSON.parse(horseAsString);
    }
    // Perform any necessary actions based on the selected record ID
}


  handleUploadFinished(event) {
    const uploadedFiles = event.detail.files;
    uploadedFiles.forEach(file => {
      // Use the file's Id to store it in the horse's Files array
      this.uploadedFiles.push(file.documentId);
    });
    console.log('uploadedFilesId: ' + this.uploadedFiles);
  }

  handleOnChange(event) {
    console.log("Event Target Name: " + JSON.stringify(event.target.name));
    console.log("Event Target Value: " + JSON.stringify(event.target.value));
    console.log("Horse: " + JSON.stringify(this.horse));

    let value = event.target.value;
    if (event.target.type === "checkbox") {
      value = event.target.checked;
    }

    this.horse = { ...this.horse, [event.target.name]: value };
  }

  handleSearch(event) {
    const lookupElement = event.target;
    apexSearch(event.detail)
      .then(results => {
        lookupElement.setSearchResults(results);
      })
      .catch(error => {
        // TODO: handle error
      });
  }

  removeRow() {
    const removeHorseEvent = new CustomEvent('removehorse', {
      detail: {
        horseId: this.horse.id
      }
    });
    this.dispatchEvent(removeHorseEvent);
  }
}