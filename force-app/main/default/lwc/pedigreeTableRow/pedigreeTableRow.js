import { LightningElement, api, track, wire } from 'lwc';
import apexSearch from '@salesforce/apex/SampleLookupController.search';


export default class PedigreeTableRow extends LightningElement {
  @api horse;
  @api uploadedFiles = [];
  @track acceptedFormats = ['.png', '.jpg', '.jpeg'];
  genderOptions = [
    { label: 'Male', value: 'Male' },
    { label: 'Female', value: 'Female' }
  ];
  boolOptions = [
    { label: 'Y', value: 'Y' },
    { label: 'N', value: 'N' }
  ];

  handleUploadFinished(event) {
    const uploadedFiles = event.detail.files;
    uploadedFiles.forEach(file => {
        // Use the file's Id to store it in the horse's Files array
        this.uploadedFiles.push(file.documentId);
    });
    console.log('uploadedFilesId: '+ this.uploadedFiles);
  }


  handleOnChange(event) {
    if(event.target.type === 'checkbox') {
      this[event.target.name] = event.target.checked;
    } else { 
      this[event.target.name] = event.target.value;
    }
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