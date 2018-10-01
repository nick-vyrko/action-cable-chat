function sendMessage(e, chatroomId) {
  if(e.key === "Enter" && !e.shiftKey) {
    e.preventDefault();

    let textarea = e.currentTarget;
    const value = trimStr(textarea.value);
    if (value) {
      App.chatrooms[chatroomId].send({ user_id: textarea.dataset.userId, message: value });
    }

    textarea.value = "";
  }
}

const trimStr = (str) => (
 str.trim().replace(/^\s+|\s+$/g,'')
);
