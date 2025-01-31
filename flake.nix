{
  outputs =
    { self }:
    {
      templates = {
        ruby = {
          path = ./templates/ruby;
          description = "Ruby development environment";
        };
        ruby-on-rails = {
          path = ./templates/ruby-on-rails;
          description = "Ruby On Rails development environment";
        };
      };
    };
}
