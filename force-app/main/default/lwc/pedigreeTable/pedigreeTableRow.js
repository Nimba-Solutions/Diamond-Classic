import { LightningElement, api } from 'lwc';

export default class PedigreeTableRow extends LightningElement {
    @api item;
    @api removeRow;
}