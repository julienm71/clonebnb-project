import { loadDynamicBannerText } from '../components/typed';
import { autocomplete } from './map';
import flatpickr from "flatpickr";
import "bootstrap";



autocomplete();
loadDynamicBannerText();

flatpickr(".datepicker", {
    altInput: true,
    dateFormat: "d-m-Y H:i"
});

