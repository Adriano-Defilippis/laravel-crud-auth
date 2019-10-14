
  <div class="wrapper-posts">
    <div class="box">
      <form>
        @csrf
        @method('POST')
        <div class="form-group">
          <label for="title">Title</label>
          <input type="text" class="form-control" name="title" id="exampleFormControlInput1" placeholder="Post Name">
        </div>
        <div class="form-group">
          <label for="category">Category select</label>
          <select name="category" class="form-control" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>

        <div class="form-group">
          <label for="text">Post</label>
          <textarea  name="text" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>

        <div class="hidden-label">
          <label for="cat_id"></label>
          <input type="text" name="cat_id" value="">

          <label for="img_cat_id"></label>
          <input type="text" name="img_cat_id" value="">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>

    </div>
  </div>
