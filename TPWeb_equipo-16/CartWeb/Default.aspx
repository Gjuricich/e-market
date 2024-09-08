<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CartWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Content/styles_df.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 

    <% 
        if ((List<Domain.Item>)Session["filteredItems"] != null)
        {
            itemList = (List<Domain.Item>)Session["filteredItems"];
            Session.Remove("filteredItems");

    %>
    <section>

        <div class="cards">

            <% foreach (Domain.Item item in itemList)
                { %>
            <div class="card">
                <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>">
                    <% if (item.Images[0].Url == "FailedLoad")
                        { %>
                    <img src="descarga.png" class="custom-img" alt="Image">
                    <% }
                        else if (item.Images[0].Url == "EmptyImage")
                        { %>
                    <img src="emptyImage.jpg" class="custom-img" alt="Image">
                    <% }
                        else
                        { %>
                    <img src="<%: item.Images[0] %>" class="custom-img" alt="Image">
                    <% } %>
                </a>

                <div class="card-body ">
                    <p><strong><%: item.Brand.Descripcion %></strong></p>
                    <p><%: item.Name %></p>
                    <p><%: item.Description %></p>
                    <p>$ <%: item.Price %></p>
                    <div class="btn-group" role="group">
                        <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>" class="btn btn-outline-secondary detail-btn" title="Detail">See more</a>
                    </div>
                </div>
            </div>
            <% }


            %>
        </div>
    </section>
    <% }
        else
        {
    %>
    <section>
        <h2 class="section-title">Dress to impress with the latest fashion trends.</h2>
        <div class="carousel-wrapper">
            <button type="button" class="carousel-button left" onclick="scrollLeft('cards-container-1')">&#10094;</button>

            <div class="horizontal-cards-container">
            <% if ((List<Domain.Item>)Session["itemsIndumentary"] != null)
                {
                    itemsIndumentary = (List<Domain.Item>)Session["itemsIndumentary"];
                    foreach (Domain.Item item in itemsIndumentary)
                    { %>
            <div class="card">
                <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>">
                    <% 
                        if (item.Images[0].Url == "FailedLoad")
                        { %>
                    <img src="descarga.png" class="custom-img" alt="Image">
                    <% }
                        else if (item.Images[0].Url == "EmptyImage")
                        { %>
                    <img src="emptyImage.jpg" class="custom-img" alt="Image">
                    <% }
                        else
                        { %>
                    <img src="<%: item.Images[0] %>" class="custom-img" alt="Image">
                    <% } %>
                        </a>
                <div class="card-body">
                    <p><strong><%: item.Brand.Descripcion %></strong></p>
                    <p><%: item.Name %></p>
                    <p><%: item.Description %></p>
                    <p>$ <%: item.Price %></p>
                    <div class="btn-group" role="group">
                        
                        <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>" class="btn add-to-cart-btn" title="Detail">See more</a>
                    </div>
                </div>
            </div>
            <% }
                } %>
        </div>
            <button type="button" class="carousel-button right" onclick="scrollRight('cards-container-1')">&#10095;</button>
            </div>
         
    </section>

    <!-- Sección de Audio -->
    <section>
        <h2 class="section-title">Experience premium audio like never before</h2>
        <div class="carousel-wrapper">
            <button type="button" class="carousel-button left" onclick="scrollLeft('cards-container-1')">&#10094;</button>

            <div class="horizontal-cards-container">
                <% if ((List<Domain.Item>)Session["itemsAudio"] != null)
                    {
                        itemsCellpone = (List<Domain.Item>)Session["itemsAudio"];
                        foreach (Domain.Item item in itemsCellpone)
                        { %>
                <div class="card">
                    <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>">
                        <% if (item.Images[0].Url == "FailedLoad")
                            { %>
                        <img src="descarga.png" class="custom-img" alt="Image">
                        <% }
                            else if (item.Images[0].Url == "EmptyImage")
                            { %>
                        <img src="emptyImage.jpg" class="custom-img" alt="Image">
                        <% }
                            else
                            { %>
                        <img src="<%: item.Images[0] %>" class="custom-img" alt="Image">
                        <% } %>
                        </a>
                    <div class="card-body">
                        <p><strong><%: item.Brand.Descripcion %></strong></p>
                        <p><%: item.Name %></p>
                        <p><%: item.Description %></p>
                        <p>$ <%: item.Price %></p>
                        <div class="btn-group" role="group">
                            <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>" class="btn add-to-cart-btn" title="Detail">See more</a>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>

            <button type="button" class="carousel-button right" onclick="scrollRight('cards-container-1')">&#10095;</button>
        </div>
    </section>

    <!-- Sección de Celulares -->
    <section>
        <h2 class="section-title">Discover the latest in smartphone technology</h2>
        <div class="carousel-wrapper">
            <button type="button" class="carousel-button left" onclick="scrollLeft('cards-container-1')">&#10094;</button>

            <div class="horizontal-cards-container">
                <% if ((List<Domain.Item>)Session["itemsCellpone"] != null)
                    {
                        itemsCellpone = (List<Domain.Item>)Session["itemsCellpone"];
                        foreach (Domain.Item item in itemsCellpone)
                        { %>
                <div class="card">
                    <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>">
                        <% if (item.Images[0].Url == "FailedLoad")
                            { %>
                        <img src="descarga.png" class="custom-img" alt="Image">
                        <% }
                            else if (item.Images[0].Url == "EmptyImage")
                            { %>
                        <img src="emptyImage.jpg" class="custom-img" alt="Image">
                        <% }
                            else
                            { %>
                        <img src="<%: item.Images[0] %>" class="custom-img" alt="Image">
                        <% } %>
                        </a>
                    <div class="card-body">
                        <p><strong><%: item.Brand.Descripcion %></strong></p>
                        <p><%: item.Name %></p>
                        <p><%: item.Description %></p>
                        <p>$ <%: item.Price %></p>
                        <div class="btn-group" role="group">
                            <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>" class="btn add-to-cart-btn" title="Detail">See more</a>
                        </div>
                    </div>
                </div>
                <% }
                    } %>
            </div>

            <button type="button" class="carousel-button right" onclick="scrollRight('cards-container-1')">&#10095;</button>
        </div>
    </section>
    <section>
        <h2 class="section-title">Enjoy our wide range of media devices at the best price </h2>
        <div class="carousel-wrapper">
            <button type="button" class="carousel-button left" onclick="scrollLeft('cards-container-1')">&#10094;</button>

            <div id="cards-container-1" class="horizontal-cards-container">
                <% if ((List<Domain.Item>)Session["itemsMedia"] != null)
                    {
                        itemsCellpone = (List<Domain.Item>)Session["itemsMedia"];
                        foreach (Domain.Item item in itemsCellpone)
                        { %>
                <div class="card">
                    <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>">
                        <% if (item.Images[0].Url == "FailedLoad")
                            { %>
                        <img src="descarga.png" class="custom-img" alt="Image">
                        <% }
                            else if (item.Images[0].Url == "EmptyImage")
                            { %>
                        <img src="emptyImage.jpg" class="custom-img" alt="Image">
                        <% }
                            else
                            { %>
                        <img src="<%: item.Images[0] %>" class="custom-img" alt="Image">
                        <% } %>
                        </a>
                    <div class="card-body">
                        <p><strong><%: item.Brand.Descripcion %></strong></p>
                        <p><%: item.Name %></p>
                        <p><%: item.Description %></p>
                        <p>$ <%: item.Price %></p>
                        <div class="btn-group" role="group">
                            <a href="<%: ResolveUrl("~/Detail.aspx?id=" + item.Id) %>" class="btn add-to-cart-btn" title="Detail">See more</a>
                        </div>
                    </div>
                </div>
                <% }
                    }%>
            </div>

            <button type="button" class="carousel-button right" onclick="scrollRight('cards-container-1')">&#10095;</button>
        </div>
    </section>

    <% }
                
            
        } %>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const scrollAmount = 300; // Cantidad de desplazamiento al hacer clic en el botón

            document.querySelectorAll('.carousel-wrapper').forEach(wrapper => {
                const container = wrapper.querySelector('.horizontal-cards-container');
                const leftButton = wrapper.querySelector('.carousel-button.left');
                const rightButton = wrapper.querySelector('.carousel-button.right');

                leftButton.addEventListener('click', () => {
                    container.scrollBy({
                        left: -scrollAmount,
                        behavior: 'smooth'
                    });
                });

                rightButton.addEventListener('click', () => {
                    container.scrollBy({
                        left: scrollAmount,
                        behavior: 'smooth'
                    });
                });
            });
        });

    </script>

</asp:Content>
