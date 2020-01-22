import consumer from "./consumer"

consumer.subscriptions.create("CarCreatesChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Get a reference to the table
    var tableRef = document.getElementById('cars');

    // Insert a row in the table at row index 0
    var newRow = tableRef.insertRow(-1);

    // Insert a cell in the row at index 0
    var titleCell = newRow.insertCell(0);
    var typeCell = newRow.insertCell(1);
    var colorCell = newRow.insertCell(2);
    var showCell = newRow.insertCell(3);

    // Append a text node to the cell
    var carTitle = document.createTextNode(data.title);
    var carType = document.createTextNode(data.car_type);
    var carColor = document.createTextNode(data.color);
    var showLink = document.createElement('a');
    var carShow = document.createTextNode('Show')

    showLink.appendChild(carShow)
    showLink.href = 'cars/' + data.id
    titleCell.appendChild(carTitle);
    typeCell.appendChild(carType);
    colorCell.appendChild(carColor);
    showCell.appendChild(showLink);
  }
});
