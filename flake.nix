{
  outputs =
    { self }:
    {
      templates = {
        ruby = {
          path = ./templates/ruby;
          description = "Ruby development environment";
        };
      };
    };
}
