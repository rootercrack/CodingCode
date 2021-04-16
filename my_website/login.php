<h3>Form Login</h3>
<form method="POST" action="controllers/memberController.php">
    <div class="form-group">
        <label>Username</label>
        <div class="input-group-prepend">
            <div class="input-group-text">
                <i class="fas fa-user"></i>
            </div>
            <input type="text" name="username" class="form-control" placeholder="Username" autocomplete="off" required>
        </div>
    </div>
    <div class="form-group">
        <label>Password</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-lock"></i>
                </div>
            </div>
            <input class="form-control" name="password" type="password" placeholder="Password" id="pass" autocomplete="off" required>
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <a class="text-dark" id="icon-click">
                        <i class="fas fa-eye" id="icon"></i></a>
                </div>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary mb-5"><i class="fas fa-sign-in-alt"></i> Login</button>
</form>
