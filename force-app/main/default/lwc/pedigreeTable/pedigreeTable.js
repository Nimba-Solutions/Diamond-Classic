import { LightningElement, track } from 'lwc';
import PedigreeTableRow from './pedigreeTableRow.js';

export default class PedigreeTable extends LightningElement {
    @track data = [{ id: 1, name: 'John Doe' }];

    addRow() {
        this.data = [...this.data, { id: this.data.length + 1, name: 'New Row' }];
    }

    removeRow(event) {
        console.log("IN removeRow()");
        const selectedId = event.currentTarget.dataset.id;
        this.data = this.data.filter(item => item.id !== selectedId);
    }
}