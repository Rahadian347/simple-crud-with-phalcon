
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

{{ form('user/update', 'role': 'form', 'class': 'form-signin') }}
<h1 class="h3 mb-3 font-weight-normal">Silahkan Edit Data</h1>
<input type="hidden" name="txt_id" value="{{id}}" >
<label for="name" class="sr-only">Nama</label>
<input type="name" name="txt_nama" class="form-control" value="{{nama}}" autofocus>
<label for="email" class="sr-only">Email</label>
<input type="email" name="txt_email" class="form-control" value="{{email}}">
<button class="btn btn-lg btn-primary btn-block btnSave" type="submit">Save</button>
</form>


