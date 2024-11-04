<div class="container mt-4">
    <h1 class="text-center text-primary">Welcome to Tic-Tac-Toe</h1>
    
    <!-- User Info Section -->
    <div class="row text-center mt-4">
     <div class="col">
        <p class="text-success">Wins: <%= $user.win %></p>
      </div>
     <div class="col">
        <h3 class="text-primary">User: <%= $user.name %></h3>
    </div>
      <div class="col">
        <p class="text-danger">Losses: <%= $user.lose %></p>
      </div>
      <div class="col">
        <%=link_to "Reset", game_reset_path, data: { turbo_method: :post}, class: "btn btn-danger"%>
      </div>
    </div>
</div>

    <h1 class="text-center text-primary">Tic Tac Toe</h1>
<div class="container mt-4 tg">
    <div class="row">
        <!-- Grid Item 1 -->
   

        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/0", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[0] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[0] == 1 %>
                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 2 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/1", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[1] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[1] == 1 %>
                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 3 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/2", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[2] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[2] == 1 %>
                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
    </div>
    <div class="row">
        <!-- Grid Item 4 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/3", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[3] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[3] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 5 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/4", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[4] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[4] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 6 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/5", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[5] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[5] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
    </div>
    <div class="row">
        <!-- Grid Item 7 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/6", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[6] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[6] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 8 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/7", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[7] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[7] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
        <!-- Grid Item 9 -->
        <div class="col-4 text-center">
            <div class="box bg-primary text-white d-flex align-items-center justify-content-center" style="height: 20vh;">
                <%= link_to "/game/check/8", data: { turbo_method: :post}, class: "btn btn-primary d-block text-center mt-2" do %>
                    <% if $game_array[8] == 0 %>
                        <%= image_tag "tick.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% elsif $game_array[8] == 1 %>
                    

                        <%= image_tag "cross.png", alt: "Description of the image", class: "image-class", style: "width: 50px; height: 50px;" %>
                    <% else %>
                        Empty
                    <% end %>
                <% end %>
            </div>
        </div>
    </div>
</div>


<style>
    .box {
        width: 10vw; /* Make boxes full width of column */
        margin: 2.5% 0;
        border-radius: 10px;
        border: solid 2px blue;
    }
    .image-class{
         width: 50px;
         height: 50px;
    }
    .tg{
        width: 30%;
        padding: 0;
        margin: auto;
    }
</style>