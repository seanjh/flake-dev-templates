{
  outputs =
    { self }:
    {
      templates = {
        ruby = {
          path = ./ruby;
          description = "Ruby development environment";
        };
        ruby-on-rails = {
          path = ./ruby-on-rails;
          description = "Ruby On Rails development environment";
        };
      };
    };
}
