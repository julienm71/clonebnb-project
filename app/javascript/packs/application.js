import { loadDynamicBannerText } from '../components/typed';
import flatpickr from "flatpickr";
import "bootstrap";

loadDynamicBannerText();

flatpickr(".datepicker", {
    altInput: true,
    dateFormat: "d-m-Y H:i"
});

