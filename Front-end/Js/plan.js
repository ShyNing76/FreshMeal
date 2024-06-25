let currentMonth = new Date().getMonth();
let currentYear = new Date().getFullYear();
let currentDay = new Date().getDate();
let changeCurrentMonth = new Date().getMonth();
let changeCurrentYear = new Date().getFullYear();
let selectedDayElement = null;

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
    calendarTextDisplay.textContent = `${monthNames[month]}`

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
        daySquare.id = `day-${day}`;
        daySquare.onclick = () => { openDay(day) };
    
        // Create a div for the day text
        let dayText = document.createElement("div");
        dayText.className = "day-text";
        dayText.textContent = day;
        
        // Append the day text div to the day square
        daySquare.appendChild(dayText);
    
        // Highlight the current date
        if (day === currentDay && month === currentMonth && year === currentYear) {
            dayText.classList.add('current-date');
        }
    
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
    changeCurrentMonth += delta;
    if (changeCurrentMonth > 11) {
        changeCurrentMonth = 0;
        changeCurrentYear++;
    } else if (changeCurrentMonth < 0) {
        changeCurrentMonth = 11;
        changeCurrentYear--;
    }
    generateCalendar(changeCurrentMonth, changeCurrentYear);
}

// Function to open the planner form for the selected day
function openDay(day) {
    const plannerContainer = document.getElementById('planner-container');
    const selectedDateElement = document.getElementById('selected-date');
    const plannerCalendar = document.getElementById('planner-calendar');
    const selectedDate = new Date(currentYear, currentMonth, day);

    // Format the selected date
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    selectedDateElement.textContent = selectedDate.toLocaleDateString('en-US', options);

    // Show the planner container
    plannerContainer.classList.remove('hidden-box');
    plannerCalendar.classList.add('hidden-box');
}




function closeDay(){
    const plannerContainer = document.getElementById('planner-container');
    const plannerCalendar = document.getElementById('planner-calendar');
    
    // Show the planner container
    plannerContainer.classList.add('hidden-box');
    plannerCalendar.classList.remove('hidden-box');
}

// Auto complete search box 
// let availableKeywords = [
//     'Sườn Xào Chua Ngọt',
//     'Bò Xào Hành Tây',
//     'Tôm Hùm Nướng',
//     'Phở',
//     'Bún Xào Chay',
// ];

// const resultBox = document.querySelector('.result-box');
// const inputBox = document.getElementById('input-plan-box');

// inputBox.onkeyup = function() {
//     let result = [];
//     let input = inputBox.value;
    
//     if(input.length){
//         result = availableKeywords.filter((keyword) => {
//            return keyword.toLowerCase().includes(input.toLowerCase());
//         });
//     }
//     display(result);

//     if(!result.length){
//         resultBox.innerHTML = '';
//     }
// }

// function display(result){
//     const content = result.map((list) => {
//         return "<li onclick=selectInput(this)>" + list + "</li>"
//     });

//     resultBox.innerHTML = "<ul>" + content.join('') + "</ul>"
// }

// function selectInput(list){
//     inputBox.value = list.innerHTML;
//     resultBox.innerHTML = '';
// }

const planForm = document.getElementById('planForm');
const updatePlan = document.getElementById('updateplanForm');

document.getElementById('returnBtn').addEventListener('click', (e) => {
    e.preventDefault();
    planForm.style.display = 'none';
});

// document.getElementById('finishBtn').addEventListener('click', (e) => {
//     e.preventDefault();
//     planForm.style.display = 'none';
// });

document.getElementById('returnUpdateBtn').addEventListener('click', (e) => {
    e.preventDefault();
    updatePlan.style.display = 'none';
});

// document.getElementById('finishUpdateBtn').addEventListener('click', (e) => {
//     e.preventDefault();
//     updatePlan.style.display = 'none';
// });



document.addEventListener('DOMContentLoaded', () => {
    const settingSvg = document.querySelector('.setting-svg');
    const planControl = document.querySelectorAll('.plan-main-control');
    const addPlan = document.querySelectorAll('.add-svg');
    const updateSvg = document.querySelectorAll('.update-plan');
    const saveBtn = document.getElementById('finishBtn');


    planControl.forEach(item => {
        settingSvg.addEventListener('click', () => {
            item.classList.toggle('hidden-box');
        });
    });

    updateSvg.forEach(button => {
        button.addEventListener('click', (e) => {
            updatePlan.style.display = 'flex';
        })
    });


    addPlan.forEach(button => {
        button.addEventListener('click', (e) => {
            const mealType = e.currentTarget.getAttribute('data-meal');

            const planFormText = document.getElementById('plan-type-text');

            planFormText.textContent = mealType;

            planForm.style.display = 'flex';
        })
    });

    saveBtn.addEventListener('click', (e) => {
        e.preventDefault();

        Swal.fire({
            position: "center",
            icon: "success",
            title: "Create Plan Successfully",
            showConfirmButton: false,
            timer: 1500,
            didClose: () => {
                document.getElementById('form-create').submit();
            }
        });

    });


    

});