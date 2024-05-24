import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["popupwindow"]

  connect() {

    console.log("popup connected");

    const popup = this.popupwindowTarget;

    setTimeout(function() {
      popup.classList.remove('d-none');
    }, 1000);
      }

  closePopUp() {

    console.log(this.popupwindowTarget);
    this.popupwindowTarget.classList.add("d-none");
  }
}
