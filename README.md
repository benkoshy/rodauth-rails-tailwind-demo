### What is this?

This is a demo rails app to test rodauth-rails tailwind integration.

### Instructions: 

Please change the path to the rodauth-rails library in your Gemfile. I have pointed it to benkoshy.

`./bin/rails db:create`

`./bin/dev`

[Visit localhost](http://localhost:3000/)

### Potential Issues

I have assumed nothing when it comes to layouts.

Rails, by standard has the following in their `application.html.erb` template:

```erb  
<main class="container mx-auto mt-28 px-5 flex">  <---- Note the classes here            
</main>
```

I would propose the following rod_auth layout, which assumes nothing:

```erb
<main> <---- No classes noted here      
</main> 
```

Then it should work fine.




