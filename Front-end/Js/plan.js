let currentMonth = new Date().getMonth();
let currentYear = new Date().getFullYear();

// Function to call generate calendar on load
window.onload = function () {
    generateCalendar(currentMonth, currentYear);
};

// Function to generate the calendar
function generateCalendar(month, year) {
    const calendar = document.getElementById('calendar');
    const monthYearDisplay = document.getElementById('month-year');
    const calendarTextDisplay = document.getElementById('calendar-text');
    calendar.innerHTML = ''; // Clear any existing content

    // Array of month names
    const monthNames = ["January", "February", "March", "April", "May", "June", 
    "July", "August", "September", "October", "November", "December"];

    // Update the month-year display
    monthYearDisplay.textContent = `${monthNames[month]} ${year}`;
    calendarTextDisplay.textContent = `${year}`

    // Create a new Date object for the first and last day of the month
    const firstDayOfMonth = new Date(year, month, 1);
    const lastDayOfMonth = new Date(year, month + 1, 0);

    // Calculate the day of the week of the first day of the month
    const firstDayOfWeek = firstDayOfMonth.getDay();
    const totalDays = lastDayOfMonth.getDate();

    // Calculate the last day of the previous month
    const lastDayOfPrevMonth = new Date(year, month, 0).getDate();

    // Add blank div elements for the days before the first day of the month
    for (let i = firstDayOfWeek; i > 0; i--) {
        let prevMonthDay = document.createElement("div");
        prevMonthDay.className = "calendar-day prev-month";
        prevMonthDay.textContent = lastDayOfPrevMonth - i + 1;
        calendar.appendChild(prevMonthDay);
    }

    // Add div elements for each day of the current month
    for (let day = 1; day <= totalDays; day++) {
        let daySquare = document.createElement("div");
        daySquare.className = "calendar-day";
        daySquare.textContent = day;
        daySquare.id = `day-${day}`;
        calendar.appendChild(daySquare);
    }

    // Calculate the number of blank days needed after the last day of the month
    const lastDayOfWeek = lastDayOfMonth.getDay();
    const nextMonthDaysCount = 6 - lastDayOfWeek;

    // Add blank div elements for the days after the last day of the month
    for (let i = 1; i <= nextMonthDaysCount; i++) {
        let nextMonthDay = document.createElement("div");
        nextMonthDay.className = "calendar-day next-month";
        nextMonthDay.textContent = i;
        calendar.appendChild(nextMonthDay);
    }
}

// Function to change the month
function changeMonth(delta) {
    currentMonth += delta;
    if (currentMonth > 11) {
        currentMonth = 0;
        currentYear++;
    } else if (currentMonth < 0) {
        currentMonth = 11;
        currentYear--;
    }
    generateCalendar(currentMonth, currentYear);
}


