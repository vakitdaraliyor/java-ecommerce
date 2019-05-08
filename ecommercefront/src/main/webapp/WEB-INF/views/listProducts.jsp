<div class="container">

		<div class="row">
		
				<!-- Would be to display sidebar -->
				<div class="col-md-3">
						<h1 class="my-4">Shop Name</h1>
						<%@include file="./shared/sidebar.jsp" %>
				</div>
				
				<!-- to display products -->
				<div class="col-md-9">
						<!-- Added breadcrumb component -->
						<div class="row">
								<div class="col-lg-12">
										<c:if test="${userClickAllProducts == true}">
										<ol class="breadcrumb">
												<li class="breadcrumb-item active"><a href="${contextRoot}/home">Home</a></li>
												<li class="breadcrumb-item active">All Products</li>
										</ol>
										</c:if>
										<c:if test="${userClickCategoryProducts == true}">
										<ol class="breadcrumb">
												<li class="breadcrumb-item active"><a href="${contextRoot}/home">Home</a></li>
												<li class="breadcrumb-item active">Category</li>
												<li class="breadcrumb-item active">${category.name}</li>
										</ol>
										</c:if>
								</div>
						</div>
				</div>
		
		</div>

</div>