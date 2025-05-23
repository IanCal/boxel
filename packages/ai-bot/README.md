# AI Bot

This is an experimental AI assistant for boxel using GPT4.

Applications can communicate with this via matrix chat rooms, it will automatically join any room it is invited to on the server.

Access to the matrix server currently equates to access to GPT4 if this bot is connected.

## Setup

### Matrix

This bot requires a matrix user to connect as. Create one as described in the matrix package documentation with the username `aibot` (`pnpm register-bot-user` in `packages/matrix`). The bot will default to trying to connect with the password `pass` but you can choose your own and set the `BOXEL_AIBOT_PASSWORD` environment variable.

It will default to connecting on `http://localhost:8008/`, which can be overridden with the `MATRIX_URL` environment variable.

### Boxel Development

If you are working on boxel development, you do not need to connect this up to OpenAI.

### Access to GPT4

You can get an OpenRouter api key one from the staging parameter store or ask within the team.
Set this as the `OPENROUTER_API_KEY` environment variable.

    OPENROUTER_API_KEY="sk-..."

## Running

Start the server with `pnpm start` or `pnpm start-dev` for live reload.

## Usage

Open the boxel application and go into operator mode. Click the bottom right button to launch the matrix rooms.

Once logged in, create a room and invite the aibot - it should join automatically.

It will be able to see any cards shared in the chat and can respond using GPT4 if you ask for content modifications (as a start, try 'can you create some sample data for this?'). The response should stream back and give you several options, these get applied as patches to the shared card if it is in your stack.

### Debugging

You can deliberately trigger a specific patch by sending a message that starts `debug:patch:` and has the JSON patch you want returned. For example:

```
debug:patch:{"attributes": {"cardId":"http://localhost:4200/experiments/Author/1", "patch": { "attributes": {"firstName": "David"}}}}
```

This will return a patch with the ID of the last card you uploaded. This does not hit GPT4 and is useful for testing the integration of the two components without waiting for streaming responses.

You can set a room name with `debug:title:set:`

```
debug:title:set:My Room
```

And you can trigger room naming with `debug:title:create` on its own.

## Testing

### Unit tests

Run `pnpm test`
