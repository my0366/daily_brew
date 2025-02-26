import { CallHandler, ExecutionContext, Injectable, NestInterceptor, HttpException, HttpStatus } from '@nestjs/common';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable()
export class ErrorInterceptor implements NestInterceptor {
    intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
        return next.handle().pipe(
            catchError((error) => {
                let statusCode = HttpStatus.INTERNAL_SERVER_ERROR;
                let message = 'Internal server error';

                if (error instanceof HttpException) {
                    statusCode = error.getStatus();
                    message = error.getResponse() as string;
                }

                return throwError(() => ({
                    statusCode,
                    message,
                    data: null,
                }));
            }),
        );
    }
}