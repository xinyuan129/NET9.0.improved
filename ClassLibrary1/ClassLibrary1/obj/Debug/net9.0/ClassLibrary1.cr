using OpenTK.Windowing.Common;
using OpenTK.Windowing.Desktop;
using OpenTK.Graphics.OpenGL4;

namespace ClassLibrary1
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var nativeWindowSettings = new NativeWindowSettings()
            {
                Size = new OpenTK.Mathematics.Vector2i(800, 600),
                Title = "3D Rendering Example"
            };

            using (var window = new GameWindow(GameWindowSettings.Default, nativeWindowSettings))
            {
                window.RenderFrame += (FrameEventArgs e) =>
                {
                    GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
                    GL.ClearColor(0.1f, 0.2f, 0.3f, 1.0f);

                    // Add your rendering code here

                    window.SwapBuffers();
                };

                window.Run();
            }
        }
    }
}