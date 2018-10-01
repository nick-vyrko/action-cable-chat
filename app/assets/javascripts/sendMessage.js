function sendMessage(e, chatroomId) {
  if(e.key === "Enter") {
    let textarea = e.currentTarget;
    App.chatrooms[chatroomId].send({ user_id: textarea.dataset.userId, message: textarea.value });
  }
  // e.preventDefault();
}
