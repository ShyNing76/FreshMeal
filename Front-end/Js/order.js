document.addEventListener('DOMContentLoaded', function() {
    const tabs = document.querySelectorAll('.progress-aria');

    tabs.forEach(tab => {
        tab.addEventListener('click', function(event) {
            event.preventDefault();

            tabs.forEach(t => t.classList.remove('progress-choose'));

            this.classList.add('progress-choose');
        });
    });
});