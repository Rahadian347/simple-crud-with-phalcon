<style>
    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
    }
</style>

{{ form('/', 'role': 'form') }}
<form class="form-signin">
        <h4 class="h4 mb-4 font-weight-normal">Silahkan Input Data</h4>
        <label for="name" class="sr-only">Nama</label>
        <input type="name" name="txt_nama" class="form-control" placeholder="Nama Anda" autofocus>
        <label for="email" class="sr-only">Email</label>
        <input type="email" name="txt_email" class="form-control" placeholder="Email Anda">
        <button class="btn btn-lg btn-primary btn-block btnSave" type="submit">Save</button>
        <div id="viewdata">
            <?= $this->tag->linkTo(['viewdata', 'Lihat Data!','class' => 'buttonLink']) ?>
        </div>
        
        
        
</form>