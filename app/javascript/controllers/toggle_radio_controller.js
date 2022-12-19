import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggle"];
  static classes = ["toggle"];

  change(event) {
    const radio_button = event.target;
    const toggleTarget = this.get_toggle_ascendant(radio_button);

    // add class to selected item
    toggleTarget.classList.add(this.toggleClass);

    //remove class from other items
    this.toggleTargets.forEach((otherToggle) => {
      if (toggleTarget !== otherToggle) {
        otherToggle.classList.remove(this.toggleClass);
      } else {
      }
    });
  }

  get_toggle_ascendant(element) {
    if (this.toggleTargets.includes(element)) {
      return element;
    } else {
      return this.get_toggle_ascendant(element.parentElement);
    }
  }
}
