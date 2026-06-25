const DASHBOARD =
"http://localhost:5005";

const PATIENT =
"http://localhost:5001";

const DOCTOR =
"http://localhost:5002";

const APPOINTMENT =
"http://localhost:5003";

const BILLING =
"http://localhost:5004";


function showPage(page){

document
.querySelectorAll("section")
.forEach(sec=>{

sec.classList.add("hidden");

});

document
.getElementById(page)
.classList.remove("hidden");
}


async function loadDashboard(){

const res =
await fetch(
`${DASHBOARD}/dashboard/stats`
);

const data =
await res.json();

patientCount.innerText =
data.total_patients;

doctorCount.innerText =
data.total_doctors;

appointmentCount.innerText =
data.total_appointments;

revenueCount.innerText =
"₹"+data.total_revenue;
}


document
.getElementById("patientForm")
.addEventListener(
"submit",
async(e)=>{

e.preventDefault();

await fetch(
`${PATIENT}/patients`,
{
method:"POST",
headers:{
"Content-Type":
"application/json"
},
body:JSON.stringify({
name:patientName.value,
age:Number(patientAge.value),
gender:patientGender.value,
phone:patientPhone.value,
address:patientAddress.value
})
});

loadPatients();
loadDashboard();

});
