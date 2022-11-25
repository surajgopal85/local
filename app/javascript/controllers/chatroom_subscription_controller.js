import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { experienceId: Number }
  static targets = ["messages"]

  connect() {
    // console.log(this.values)
    console.log(this.experienceIdValue)
    this.channel = createConsumer().subscriptions.create(
      { channel: "ExperienceChannel", id: this.experienceIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(this.channel)
    // console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    console.log(data)
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.preventDefault()
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
