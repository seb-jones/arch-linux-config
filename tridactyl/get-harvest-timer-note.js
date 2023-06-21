const location = window.location.toString();

if (location.startsWith('https://projects.enovate.co.uk/desk/')) {
    `Ticket ${document.querySelector('.ticket-id').innerText}: ${document.querySelector('.title__subject-text').innerText}`
}
