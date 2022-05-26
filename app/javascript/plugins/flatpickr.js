// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    allowInput: true,
    minDate: "today"
  });
}


export { initFlatpickr };
