# Deployment

## What is in the archive and how to unarchive it?

In the archive, ....

## What are the commands to start and stop the application?

To start and stop the appliction, please use:
<code></code> to start, and <code><code> to stop.

## How to customize where the application logs are written?

To customize where logs are written, use a symbolic link to
<code></code> to <code></code>

## How to “quickly” verify that the application is running (healthcheck)?

To verify the application is running, create a workflow to do a quick healthcheck, 
or execute either <code>make unit-test</code> or <code>make integration-tests</code>.