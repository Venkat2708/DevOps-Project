const API = "";

function showSection(id){

document.querySelectorAll(".page")
.forEach(page=>{
page.classList.add("hidden");
});

document.getElementById(id)
.classList.remove("hidden");
}

async function loadDashboard(){

const res =
await fetch("/dashboard/stats");

const data = await res.json();

patientCount.innerText =
data.patients;

doctorCount.innerText =
data.doctors;

appointmentCount.innerText =
data.appointments;

revenueCount.innerText =
"₹" + data.revenue;
}

async function loadPatients(){

const res =
await fetch("/patients");

const patients =
await res.json();

patientTable.innerHTML =
patients.map(p=>`
<tr>
<td>${p.id}</td>
<td>${p.name}</td>
<td>${p.age}</td>
<td>${p.gender}</td>
</tr>
`).join("");
}

async function loadDoctors(){

const res =
await fetch("/doctors");

const doctors =
await res.json();

doctorTable.innerHTML =
doctors.map(d=>`
<tr>
<td>${d.id}</td>
<td>${d.name}</td>
<td>${d.specialization}</td>
</tr>
`).join("");
}

async function loadAppointments(){

const res =
await fetch("/appointments");

const appointments =
await res.json();

appointmentTable.innerHTML =
appointments.map(a=>`
<tr>
<td>${a.id}</td>
<td>${a.patient_id}</td>
<td>${a.doctor_id}</td>
<td>${a.appointment_date}</td>
</tr>
`).join("");
}

async function loadBills(){

const res =
await fetch("/bills");

const bills =
await res.json();

billTable.innerHTML =
bills.map(b=>`
<tr>
<td>${b.id}</td>
<td>${b.patient_id}</td>
<td>₹${b.amount}</td>
<td>${b.payment_status}</td>
</tr>
`).join("");
}

patientForm.addEventListener(
"submit",
async(e)=>{

e.preventDefault();

await fetch("/patients",{
method:"POST",
headers:{
"Content-Type":"application/json"
},
body:JSON.stringify({
name:pname.value,
age:Number(page.value),
gender:pgender.value,
phone:pphone.value,
address:paddress.value
})
});

loadPatients();
loadDashboard();
patientForm.reset();
});

doctorForm.addEventListener(
"submit",
async(e)=>{

e.preventDefault();

await fetch("/doctors",{
method:"POST",
headers:{
"Content-Type":"application/json"
},
body:JSON.stringify({
name:dname.value,
specialization:dspecialization.value,
experience:Number(dexperience.value),
phone:dphone.value
})
});

loadDoctors();
loadDashboard();
doctorForm.reset();
});

appointmentForm.addEventListener(
"submit",
async(e)=>{

e.preventDefault();

await fetch("/appointments",{
method:"POST",
headers:{
"Content-Type":"application/json"
},
body:JSON.stringify({
patient_id:Number(apatient.value),
doctor_id:Number(adoctor.value),
appointment_date:adate.value
})
});

loadAppointments();
loadDashboard();
appointmentForm.reset();
});

billForm.addEventListener(
"submit",
async(e)=>{

e.preventDefault();

await fetch("/bills",{
method:"POST",
headers:{
"Content-Type":"application/json"
},
body:JSON.stringify({
patient_id:Number(bpatient.value),
amount:Number(bamount.value)
})
});

loadBills();
loadDashboard();
billForm.reset();
});

window.onload=()=>{

loadDashboard();
loadPatients();
loadDoctors();
loadAppointments();
loadBills();

};
