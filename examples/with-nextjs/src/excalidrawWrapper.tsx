"use client";
import * as excalidrawLib from "@pageflux/excalidraw";
import { Excalidraw } from "@pageflux/excalidraw";

import "@pageflux/excalidraw/index.css";

import App from "../../with-script-in-browser/components/ExampleApp";

const ExcalidrawWrapper: React.FC = () => {
  return (
    <>
      <App
        appTitle={"Excalidraw with Nextjs Example"}
        useCustom={(api: any, args?: any[]) => {}}
        excalidrawLib={excalidrawLib}
      >
        <Excalidraw />
      </App>
    </>
  );
};

export default ExcalidrawWrapper;
