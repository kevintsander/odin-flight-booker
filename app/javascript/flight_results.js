// document.addEventListener("turbo:load", setupFlightCardListeners);

// function setupFlightCardListeners() {
//   const flight_cards = document.querySelectorAll(".flight-card");

//   flight_cards.forEach((card) => {
//     let radio_button = card.querySelector("input[type='radio']");

//     function change_selected_flight() {
//       if (radio_button.checked) {
//         radio_button.checked = false;
//         card.classList.remove("flight-card-selected");
//       } else {
//         radio_button.checked = true;
//         card.classList.add("flight-card-selected");
//         flight_cards.forEach((otherCard) => {
//           if (card != otherCard) {
//             otherCard.classList.remove("flight-card-selected");
//           }
//         });
//       }
//     }

//     radio_button.addEventListener("change", (e) => {
//       change_selected_flight();
//       e.stopPropagation();
//     });

//     card.addEventListener("click", (e) => {
//       change_selected_flight();
//     });
//   });
// }

// setupFlightCardListeners();
