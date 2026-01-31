import "csstype";
import "react";

declare module "csstype" {
  interface Properties {
    "--max-width"?: number | string;
    "--swatch-color"?: string;
    "--gap"?: number | string;
    "--padding"?: number | string;
  }
}

declare module "react" {
  interface CSSProperties {
    [key: `--${string}`]: string | number | undefined;
  }
}
