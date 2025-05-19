import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "submit"]

  search() {
    this.submitTarget.disabled = this.inputTarget.value.length === 0
    this.formTarget.requestSubmit()
  }
}
