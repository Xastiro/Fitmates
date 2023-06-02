import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "date", "startTime", "endTime" ]

  connect() {
    flatpickr(this.dateTarget, {
                                altInput: true,
                                altFormat: "F j",
                                dateFormat: "Y-m-d",
                                });
    flatpickr(this.startTimeTarget, {
                                      enableTime: true,
                                      noCalendar: true,
                                      dateFormat: "H:i",
                                      time_24hr: true
                                    });
    flatpickr(this.endTimeTarget, {
                                    enableTime: true,
                                    noCalendar: true,
                                    dateFormat: "H:i",
                                    time_24hr: true
                                  });
  }
}
