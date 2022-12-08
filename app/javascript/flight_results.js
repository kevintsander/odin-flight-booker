const flight_cards = document.querySelectorAll(".flight-card");

flight_cards.forEach((card) => {
  card.addEventListener("click", () => {
    let radio_button = card.querySelector("input[type='radio']");
    radio_button.checked = !radio_button.checked;
  });
});
