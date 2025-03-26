import 'package:yu_news/models/category_models.dart';

List<CategoryModel> getcategories(){
  List<CategoryModel> category=[];
  CategoryModel categorymodel =  new CategoryModel();

  categorymodel.Categoryname="Business";
  categorymodel.image="images/businessCat.jpg";
  category.add(categorymodel);
  categorymodel =  new CategoryModel();
  

 categorymodel.Categoryname="Entertainment";
  categorymodel.image="images/entertainment.jpg";
  category.add(categorymodel);
  categorymodel =  new CategoryModel();


   categorymodel.Categoryname="Science";
  categorymodel.image="images/science_cat.jpg";
  category.add(categorymodel);
  categorymodel =  new CategoryModel();

   categorymodel.Categoryname="sports";
  categorymodel.image="images/cricket_cat.jpg";
  category.add(categorymodel);
  categorymodel =  new CategoryModel();

   categorymodel.Categoryname="Technology";
  categorymodel.image="images/technology_cat.jpg";
  category.add(categorymodel);
  categorymodel =  new CategoryModel();

   


  return category;


}