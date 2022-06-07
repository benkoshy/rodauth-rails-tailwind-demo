import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {  	
    this.main = document.getElementsByTagName("main")[0];     
    console.log(this.main)
  }

  toggle(event){
  	this.main.classList.toggle("dark");
  }
}
