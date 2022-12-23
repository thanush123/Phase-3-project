

function add_to_cart(useridentity,proId, proName, pquanCart,proprice) {
	
	console.log(useridentity);
	let cart = localStorage.getItem(useridentity+"cart");
	if (cart == null) {
		let products = [];
		let product = { pid: proId, pname: proName, quantity: pquanCart ,price:proprice};
		products.push(product);
		localStorage.setItem(useridentity+"cart", JSON.stringify(products));
		console.log("Product added for first time");
	}
	else {
		let pcart = JSON.parse(cart);
		let oldProduct = pcart.find((item) => item.pid == proId);
		if (oldProduct) {
			oldProduct.quantity = oldProduct.quantity + 1;

			pcart.map((item) => {

				if (item.pid == oldProduct.pid) {
					item.quantity = oldProduct.quantity;

				}
			})
			localStorage.setItem(useridentity+"cart", JSON.stringify(pcart));
			console.log("Product quantity updated");
		}
		else {
			let product = { pid: proId, pname: proName, quantity: pquanCart ,price:proprice};
			pcart.push(product);
			localStorage.setItem(useridentity+"cart", JSON.stringify(pcart));
			console.log("New product added "+useridentity);
		}
	}
	updateCart(useridentity);
}


function updateCart(useridentity) {
	let cartstring = localStorage.getItem(useridentity+"cart");
	let cart = JSON.parse(cartstring);
	if (cart == null || cart.length == 0) {
		console.log("cart is empty");
		$(".funny").html("( 0 )");
		$(".cart_body").html("<h3>Cart is empty</h3>");
		$(".checkout-btn").attr('disabled',true);
	}
	else {
		$(".checkout-btn").attr('disabled',false);
		console.log(cart);
		$(".funny").html(`(${cart.length})`);
		let table=`
		<table class="table">
		<thead class="thead-light">
		<tr>
		<th>Product Id</th>
		<th>Product name</th>
		<th>quantity</th>
		<th>Product Price</th>
		<th>Product Total</th>
		<th>Action</th>
		</tr>
		
		</thead>
		`;
		sum=0;
		cart.map((item)=>{
			
			ptotal=item.price*item.quantity;
			
			table+=`
			<tr>
			<td>${item.pid}</td>
			<td>${item.pname}</td>
			<td>${item.quantity}</td>
			<td>${item.price}</td>
			<td>${ptotal}</td>
			<td><button onclick="deleteItem('${useridentity}',${item.pid})" class="btn btn-danger btn-sm">Remove</button></td>
			</tr>
			`
			console.log("remove"+useridentity);
			sum=sum+ptotal;
		})
		table=table+`
		<tr><td align="right">Total Price: ${sum}</td></tr>
		
		</table>`;
		$(".cart_body").html(table);
	}
}

function deleteItem(useridentity,usid){
	let cart =JSON.parse(localStorage.getItem(useridentity+"cart"));
	let newcart=cart.filter((item)=>item.pid!=usid);
	localStorage.setItem(useridentity+"cart",JSON.stringify(newcart));
	updateCart(useridentity);
}

function orderbox(useridentity){
	let order =JSON.parse(localStorage.getItem(useridentity+"cart"));
	localStorage.setItem(useridentity+"orders", JSON.stringify(order));
	localStorage.removeItem(useridentity+"cart");
	updateCart(useridentity);
}

function orderboxshow(useridentity){
	let cartstring = localStorage.getItem(useridentity+"orders");
	let cart = JSON.parse(cartstring);
	cart=cart.reverse();
	if (cart == null || cart.length == 0) {
		$(".userorders").html("<h3>No orders</h3>");
	}
	else {
		let table=`
		<table class="table">
		<thead class="thead-light">
		<tr>
		<th>Product Id</th>
		<th>Product name</th>
		<th>quantity</th>
		<th>Product Price</th>
		<th>Product Total</th>
		<th>Action</th>
		</tr>
		
		</thead>
		`;
		cart.map((item)=>{
			
			ptotal=item.price*item.quantity;
			
			table+=`
			<tr>
			<td>${item.pid}</td>
			<td>${item.pname}</td>
			<td>${item.quantity}</td>
			<td>${item.price}</td>
			<td>${ptotal}</td>
			<td><button onclick="deleteOrder('${useridentity}',${item.pid})" class="btn btn-danger btn-sm">Cancel Order</button></td>
			</tr>
			`
		})
		table=table+`</table>`;
		$(".userorders").html(table);
	}
}

function deleteOrder(useridentity,usid){
	let cart =JSON.parse(localStorage.getItem(useridentity+"orders"));
	let newcart=cart.filter((item)=>item.pid!=usid);
	localStorage.setItem(useridentity+"orders",JSON.stringify(newcart));
	orderboxshow(useridentity)
}



function oorike(useridentity){
	updateCart(useridentity);
	orderboxshow(useridentity);
}













