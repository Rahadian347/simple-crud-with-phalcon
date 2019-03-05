{% for datas in data %}
{% if loop.first %}
<main role="main" class="mx-auto col-md-10 col-lg-10 px-4">
<div class="table-responsive">
<table class="table table-striped table-sm">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
    </thead>
    {% endif %}
    <tbody>
        <tr>
            <td>{{ datas.id_user }}</td>
            <td>{{ datas.nama_user }}</td>
            <td>{{ datas.email_user }}</td>
            <td>{{linkTo("edit/" ~ datas.id_user, "Edit")}} {{linkTo("hapus/" ~ datas.id_user, "Hapus")}}</td>
        </tr>
    </tbody>
    {% if loop.last %}
</table>
<?= $this->tag->linkTo(['', 'Tambah Data!','class' => 'buttonLink']) ?>
</div>
</main>
{% endif %}
{% else %}
No Data
{% endfor %}