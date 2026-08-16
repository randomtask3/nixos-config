{
  description = "OpenGL C++ development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            # Toolchain
            clang
            clang-tools
            lldb

            cmake
            ninja
            pkg-config
            gnumake

            # OpenGL
            mesa
            libGL
            libGLU

            # Windowing
            glfw

            # Extensions
            glew

            # Math
            glm

            sdl3        # audio/input if desired
            openal

            # Debugging
            renderdoc

            # Misc
            git
            gdb

            # vscode integration
            clang-tools
            bear
            cmake-language-server
          ];

          shellHook = ''
            export CC=clang
            export CXX=clang++

            echo "OpenGL development shell"
            echo "Compiler: $(clang++ --version | head -n1)"
          '';
        };
      });
}