MAX_LENGTH_MESSAGE = 120;

function sendMessage(e, chatroomId) {
  const textarea = e.currentTarget;
  const value = trimStr(textarea.value);
  const alert = document.querySelector(".alert");

  if (value.length >= MAX_LENGTH_MESSAGE) {
    const new_alert =  alert || createHTML(`<div class='alert alert-danger'>Max message length is ${MAX_LENGTH_MESSAGE}</div>`)
    textarea.parentNode.appendChild(new_alert);
    return;
  } else {
    alert && textarea.parentNode.removeChild(alert);
  }

  if (value.length > 0 && e.key === "Enter" && !e.shiftKey) {
    e.preventDefault();
      App.chatrooms[chatroomId].send({ user_id: textarea.dataset.userId, message: value });

      textarea.value = "";
  }
}

const trimStr = (str) => (
 str.trim().replace(/^\s+|\s+$/g,'')
);
