document.addEventListener("turbolinks:load", function() {
  const messageForm = document.querySelector('#message_form');
  if (!messageForm) { return; }

  const id = messageForm.dataset.chatroomId;
  if (App.chatrooms[id]) { return; }

  App.chatrooms[id] = App.cable.subscriptions.create({channel: "ChatroomChannel", room_id: id}, {
    received: function(data) {
      const list = document.querySelector("#messages_list");
      const messageElement = createMessage(data);
      list.appendChild(messageElement);
    }
  });
});

const createMessage = (data) => {
  const messageString = `<div class="message-row"><div class="message-item"><div class="name">${data.name}</div><div class="content">${data.content}</div></div></div>`;
  return createHTML(messageString);
};

const createHTML = (domstring) => {
  const html = new DOMParser().parseFromString(domstring, 'text/html');
  return html.body.firstChild;
};

