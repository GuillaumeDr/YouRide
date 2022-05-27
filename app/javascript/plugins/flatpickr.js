// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// const initFlatpickr = () => {
//   flatpickr(".datepicker", {
//     altInput: true,
//     allowInput: true,
//     minDate: "today"
//   });
// }

const initFlatpickr = () => {
  const bookingForm = document.getElementById('booking-form-div');

  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": bookings,
    })
  }
};

const startDate = document.getElementById("range_start");
const endDate = document.getElementById("range_end");
const totalNights = document.getElementById("total-nights");
const skiPricePerNight = document.getElementById("ski-price-per-day").innerText;
const totalPriceElement = document.getElementById("total-price");

const dynamicPrice = () => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
  let nbrOfNights = dateDiffInMilliseconds / 86400000;
  if(startDate.value && endDate.value) {
    totalNights.innerText = nbrOfNights
    totalPriceElement.innerText = nbrOfNights * skiPricePerNight
  }
};

dynamicPrice();

[startDate, endDate].forEach(date => {
  date.addEventListener("change", (event) => {
    dynamicPrice();
  });
})


export { initFlatpickr };
