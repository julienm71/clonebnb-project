import { loadDynamicBannerText } from '../components/typed';
import flatpickr from "flatpickr";
import "bootstrap";

loadDynamicBannerText();

flatpickr("#myID", {
    altInput: true,
    dateFormat: "d-m-Y H:i"
});
