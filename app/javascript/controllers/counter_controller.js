// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  sleep(milliseconds) {
   var start = new Date().getTime();
   for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds) {
     break;
    }
   }
  }

  refresh() {
    this.sleep(1000);
    fetch('/counter', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        this.countTarget.dataset.count = data.count;
      });
  }
}




