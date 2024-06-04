function getWeekRange(date){
    const firstDay = new Date(date);
      const lastDay = new Date(date);
      
      firstDay.setDate(date.getDate() - date.getDay() + 1); // Thứ hai của tuần hiện tại
      lastDay.setDate(firstDay.getDate() + 6); // Chủ nhật của tuần hiện tại

      const formatOptions = { day: '2-digit', month: '2-digit' };

      const formattedFirstDate = firstDay.toLocaleDateString('vi-VN', formatOptions);
      const formattedLastDate = lastDay.toLocaleDateString('vi-VN', formatOptions);

      return `${formattedFirstDate} - ${formattedLastDate}`;
}

function updateWeekLinks() {
    const links = document.querySelectorAll('.weekly-nav a');
    const today = new Date();

    links.forEach((link, index) => {
      const startDate = new Date(today);
      startDate.setDate(today.getDate() + (index * 7));
      const weekRange = getWeekRange(startDate);
      const monthName = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];


      const [start, end] = weekRange.split(' - ');
      const [startDay, startMonth] = start.split('-');
      const [endDay, endMonth] = end.split('-');

      const indexMonth = parseInt(startMonth) - 1;
      
      link.querySelector('small').textContent = monthName[indexMonth];
      link.querySelector('span').textContent = `${startDay}-${endDay}`;
    });
  }

document.addEventListener('DOMContentLoaded', updateWeekLinks);