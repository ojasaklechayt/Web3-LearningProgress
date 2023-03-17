async function connectwallet() {
    accounts = await window.ethereum.request({method: "eth_requestAccounts"}).catch(() => {
        console.log(err.code)
    })

    console.log(accounts);
}