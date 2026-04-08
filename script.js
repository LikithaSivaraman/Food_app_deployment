// random server id (simulate instance)
const servers = [
    "EC2-Instance-A",
    "EC2-Instance-B",
    "EC2-Instance-C"
];

document.getElementById("serverId").innerText =
    servers[Math.floor(Math.random() * servers.length)];

document.getElementById("time").innerText =
    new Date().toLocaleString();

// random background color (easy LB test)
const colors = ["#ffe0e0","#e0ffe0","#e0e0ff","#fff0cc"];
document.body.style.background =
    colors[Math.floor(Math.random() * colors.length)];