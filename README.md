# Sosial-Chating-GChat
Ini adalah projek Aplikasi chating berbasis web 

# Installation
> `npm install --save @types/cors`

# Demo
Play Demo (https://adorable-hare-petticoat.cyclic.app/).

# Details
Files were exported from https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/cors.
## [index.d.ts](https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/cors/index.d.ts)
````ts
// ini typescript 2.3
// bila gak support cari aja sendiri :v gua cuma nemu ini

import { IncomingHttpHeaders } from 'http';

type StaticOrigin = boolean | string | RegExp | (boolean | string | RegExp)[];

type CustomOrigin = (requestOrigin: string | undefined, callback: (err: Error | null, origin?: StaticOrigin) => void) => void;

declare namespace e {
    interface CorsRequest {
        method?: string | undefined;
        headers: IncomingHttpHeaders;
    }
    interface CorsOptions {
        /**
         * @default '*''
         */
        origin?: StaticOrigin | CustomOrigin | undefined;
        /**
         * @default 'GET,HEAD,PUT,PATCH,POST,DELETE'
         */
        methods?: string | string[] | undefined;
        allowedHeaders?: string | string[] | undefined;
        exposedHeaders?: string | string[] | undefined;
        credentials?: boolean | undefined;
        maxAge?: number | undefined;
        /**
         * @default false
         */
        preflightContinue?: boolean | undefined;
        /**
         * @default 204
         */
        optionsSuccessStatus?: number | undefined;
    }
    type CorsOptionsDelegate<T extends CorsRequest = CorsRequest> = (
        req: T,
        callback: (err: Error | null, options?: CorsOptions) => void,
    ) => void;
}

declare function e<T extends e.CorsRequest = e.CorsRequest>(
    options?: e.CorsOptions | e.CorsOptionsDelegate<T>,
): (
    req: T,
    res: {
        statusCode?: number | undefined;
        setHeader(key: string, value: string): any;
        end(): any;
    },
    next: (err?: any) => any,
) => void;
export = e;

````

### Additional Details
 * Last updated: Fri, 09 Jul 2022 07:31:29 GMT
 * Dependencies: none
 * Global values: none

# Credits
These definitions were written by [Tio](https://github.com/BOTCAHX).
