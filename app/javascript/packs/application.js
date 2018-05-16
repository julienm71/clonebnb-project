import { loadDynamicBannerText } from '../components/typed';
import { autocomplete } from './map';
import flatpickr from "flatpickr";
import "bootstrap";



autocomplete();
loadDynamicBannerText();

flatpickr("#myID", {
    altInput: true,
    dateFormat: "d-m-Y H:i"
});
