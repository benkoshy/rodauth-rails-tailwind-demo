### What is this?

This is a demo rails app to test rodauth-rails tailwind integration.

### Instructions:

1. `git clone git@github.com:benkoshy/rodauth-rails-tailwind-demo.git`
2. `bundle install`
3. `./bin/rails db:create`
4. `rake db:migrate`
5. Run `rails g rodauth:views --css=tailwind` and overwrite everything using the `a` option which follows.
6. `./bin/dev`
7. [Visit localhost](http://localhost:3000/)

Now you can test it out.

**Notes:** 

* When using QR Codes, we are relying on the [latest version of rodauth - cutting edge](https://github.com/jeremyevans/rodauth/commit/90ad8052661c55f8cc394bb36b38b48ddf65899f) - which ensures the QR code will always have a white background.
* Warning: I have pointed rod-auth to be on my fork of rodauth. This is simply to test out its capabilities.

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

### Code of Conduct
Free speech without any restrictions.

### License
MIT


