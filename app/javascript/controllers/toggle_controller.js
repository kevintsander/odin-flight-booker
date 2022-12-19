import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  classes = ["toggleClass"];

  click(event) {
    target = event.target;
    radio_button = target.querySelector("input[type='radio']");

    if (radio_button.checked) {
      radio_button.checked = false;
      target.classList.remove("toggleClass");
    } else {
      radio_button.checked = true;
      target.classList.add("toggleClass");
      // remove any sibling classes
      target.parentElement.children.forEach((sibling) => {
        if (sibling.nodeType === 1 && target !== sibling) {
          sibling.classList.remove("toggleClass");
        }
      });
      siblings = [...target.parentElement.children].filter(
        (child) => child.nodeType === 1 && child != target
      );
      siblings;

      flight_cards.forEach((otherCard) => {
        if (card != otherCard) {
          otherCard.classList.remove("flight-card-selected");
        }
      });
    }

    function change_selected_flight() {
      if (radio_button.checked) {
        radio_button.checked = false;
        card.classList.remove("flight-card-selected");
      } else {
        radio_button.checked = true;
        card.classList.add("flight-card-selected");
        flight_cards.forEach((otherCard) => {
          if (card != otherCard) {
            otherCard.classList.remove("flight-card-selected");
          }
        });
      }
    }
  }
}
